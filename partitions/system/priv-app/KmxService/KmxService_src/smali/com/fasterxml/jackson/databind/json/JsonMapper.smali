.class public Lcom/fasterxml/jackson/databind/json/JsonMapper;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method

.method public static builder()Li2/a;
    .locals 2

    .line 1
    new-instance v0, Li2/a;

    new-instance v1, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>()V

    invoke-direct {v0}, Li2/a;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/fasterxml/jackson/core/JsonFactory;)Li2/a;
    .locals 2

    .line 2
    new-instance v0, Li2/a;

    new-instance v1, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    invoke-direct {v0}, Li2/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->copy()Lcom/fasterxml/jackson/databind/json/JsonMapper;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/json/JsonMapper;
    .locals 1

    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_checkInvalidCopy(Ljava/lang/Class;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V

    return-object v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object p0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p0

    return p0
.end method

.method public rebuild()Li2/a;
    .locals 1

    new-instance v0, Li2/a;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->copy()Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v0}, Li2/a;-><init>()V

    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/j;->a:Lcom/fasterxml/jackson/core/Version;

    return-object p0
.end method
