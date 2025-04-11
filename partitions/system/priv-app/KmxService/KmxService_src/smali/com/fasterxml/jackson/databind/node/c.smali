.class public abstract Lcom/fasterxml/jackson/databind/node/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/fasterxml/jackson/databind/json/JsonMapper;

.field public static final b:Lcom/fasterxml/jackson/databind/ObjectWriter;

.field public static final c:Lcom/fasterxml/jackson/databind/ObjectWriter;

.field public static final d:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/c;->a:Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writer()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/node/c;->b:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writer()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->withDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/node/c;->c:Lcom/fasterxml/jackson/databind/ObjectWriter;

    const-class v1, Lcom/fasterxml/jackson/databind/k;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/c;->d:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method
