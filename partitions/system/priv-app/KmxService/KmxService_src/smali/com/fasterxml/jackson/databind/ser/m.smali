.class public abstract Lcom/fasterxml/jackson/databind/ser/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createKeySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract createSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public abstract createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;
.end method

.method public abstract withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/ser/m;
.end method

.method public abstract withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/ser/m;
.end method
