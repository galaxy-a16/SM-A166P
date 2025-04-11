.class public Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;
.super Lcom/fasterxml/jackson/databind/util/p;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _t1:Lcom/fasterxml/jackson/databind/util/p;

.field protected final _t2:Lcom/fasterxml/jackson/databind/util/p;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/p;Lcom/fasterxml/jackson/databind/util/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/p;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/p;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/p;

    return-void
.end method


# virtual methods
.method public reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/p;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/p;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/p;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/p;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ChainedTransformer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/p;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/p;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/p;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/p;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/util/p;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
