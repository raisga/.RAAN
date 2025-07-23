from rich.table import Table

def format_knowledge_base(df):
    table = Table(title="Knowledge Base")
    for col in df.columns:
        table.add_column(col)
    for _, row in df.iterrows():
        table.add_row(*[str(x) for x in row])
    return table
