.class public abstract Lcom/fasterxml/jackson/core/exc/StreamWriteException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected transient _processor:Lcom/fasterxml/jackson/core/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/f;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/f;

    return-void
.end method


# virtual methods
.method public getProcessor()Lcom/fasterxml/jackson/core/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/f;

    return-object p0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->getProcessor()Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public abstract withGenerator(Lcom/fasterxml/jackson/core/f;)Lcom/fasterxml/jackson/core/exc/StreamWriteException;
.end method
