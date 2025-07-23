from utils.preprocess_text import preprocess_text
from utils.ollama_chat import ollama_chat

def agent_cli(console, df):
    console.print("[bold green]Welcome to the Agent Interface![/bold green]")
    console.print("Type your question, or 'exit' to quit.\n")
    
    memory = []  # Simple memory for recall
    
    # Available commands
    commands = {
        "help": "Show available commands"
        # Add more commands as needed
    }
    
    while True:
        user_input = console.input("[bold blue]AI Agent:[/bold blue] ").strip().lower()
        
        if user_input in ("exit", "quit"):
            console.print("[bold yellow]AI Agent shutting down. Have a great service![/bold yellow]")
            break
        
        if user_input == "help":
            console.print("\n[bold]Available Commands:[/bold]")
            for cmd, desc in commands.items():
                console.print(f"  [cyan]{cmd}[/cyan]: {desc}")
            console.print()
            continue
        
        else:
            # Check knowledge base first
            user_clean = preprocess_text(user_input)
            match = df[df["question_clean"] == user_clean]
            
            if not match.empty:
                answer = match.iloc[0]["answer"]
                console.print(f"[bold magenta]🧠 Knowledge:[/bold magenta] {answer}")
                memory.append((user_input, answer))
            else:
                console.print("[italic]Consulting AI assistant...[/italic]")
                response = ollama_chat(f"As a restaurant AI Agent, {user_input}")
                console.print(f"[bold cyan]🤖 AI Assistant:[/bold cyan] {response}")
                memory.append((user_input, response))
        
        # Show memory recall after 3 exchanges
        if len(memory) >= 3 and len(memory) % 3 == 0:
            console.print("\n[bold]📝 Recent Activity:[/bold]")
            for i, (q, a) in enumerate(memory[-3:], len(memory)-2):
                console.print(f"{i}. [blue]{q}[/blue] → [green]{a[:50]}...[/green]")
        
        console.print()  # Add spacing
