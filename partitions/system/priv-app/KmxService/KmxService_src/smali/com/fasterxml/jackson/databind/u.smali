.class public final Lcom/fasterxml/jackson/databind/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/s;


# instance fields
.field public final synthetic a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/u;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/u;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/n;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/n;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/a;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/n;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public final b(Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/u;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/n;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/n;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/p;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/n;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public final c(Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/u;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/n;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/n;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/q;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/n;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public final d(Lcom/fasterxml/jackson/databind/module/SimpleSerializers;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/u;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/m;->withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/ser/m;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    return-void
.end method

.method public final e(Lcom/fasterxml/jackson/databind/module/SimpleSerializers;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/u;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/m;->withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/ser/m;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    return-void
.end method

.method public final f(Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/u;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/n;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/n;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/x;)Lcom/fasterxml/jackson/databind/deser/n;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/n;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method
