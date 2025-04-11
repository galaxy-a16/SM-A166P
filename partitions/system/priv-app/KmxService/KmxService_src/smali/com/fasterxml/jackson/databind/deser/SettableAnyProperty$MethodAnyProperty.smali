.class public Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MethodAnyProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodAnyProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)V
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
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)V

    return-void
.end method


# virtual methods
.method public _set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->callOnWith(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;"
        }
    .end annotation

    new-instance v7, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MethodAnyProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_property:Lcom/fasterxml/jackson/databind/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_keyDeserializer:Lcom/fasterxml/jackson/databind/q;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$MethodAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/q;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/jsontype/g;)V

    return-object v7
.end method
