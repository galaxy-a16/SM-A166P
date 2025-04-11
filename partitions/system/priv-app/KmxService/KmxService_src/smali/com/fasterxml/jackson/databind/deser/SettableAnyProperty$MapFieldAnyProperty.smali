.class public Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MapFieldAnyProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapFieldAnyProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/q;",
            "Lcom/fasterxml/jackson/databind/i;",
            "Lcom/fasterxml/jackson/databind/jsontype/g;",
            "Lcom/fasterxml/jackson/databind/deser/v;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)V

    iput-object p7, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MapFieldAnyProperty;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

    return-void
.end method


# virtual methods
.method public _createAndSetMap(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p4, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MapFieldAnyProperty;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Lcom/fasterxml/jackson/databind/deser/v;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p2, p3, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-interface {p0}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x1

    aput-object p0, p2, p3

    const-string p0, "Cannot create an instance of %s for use as \"any-setter\" \'%s\'"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public _set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MapFieldAnyProperty;->_createAndSetMap(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    :cond_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;"
        }
    .end annotation

    new-instance v8, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MapFieldAnyProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_property:Lcom/fasterxml/jackson/databind/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_keyDeserializer:Lcom/fasterxml/jackson/databind/q;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MapFieldAnyProperty;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/v;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MapFieldAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/deser/v;)V

    return-object v8
.end method
