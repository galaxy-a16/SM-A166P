.class public abstract Lcom/fasterxml/jackson/core/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
.end method

.method public getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/j;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    return-object p0
.end method

.method public abstract writeValue(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;)V
.end method
