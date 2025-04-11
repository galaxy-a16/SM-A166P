.class public abstract Lcom/fasterxml/jackson/core/exc/StreamReadException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x2L


# instance fields
.field protected transient _processor:Lcom/fasterxml/jackson/core/g;

.field protected _requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->b0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/g;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/g;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/g;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->b0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    if-eqz v1, :cond_0

    const-string v1, "\nRequest payload : "

    invoke-static {v0, v1}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/RequestPayload;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProcessor()Lcom/fasterxml/jackson/core/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/g;

    return-object p0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/exc/StreamReadException;->getProcessor()Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public getRequestPayload()Lcom/fasterxml/jackson/core/util/RequestPayload;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    return-object p0
.end method

.method public getRequestPayloadAsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/RequestPayload;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract withParser(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
.end method

.method public abstract withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
.end method
