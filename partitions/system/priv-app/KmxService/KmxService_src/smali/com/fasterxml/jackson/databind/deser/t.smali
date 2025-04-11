.class public final Lcom/fasterxml/jackson/databind/deser/t;
.super Lcom/fasterxml/jackson/databind/deser/impl/l;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/l;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/l;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/t;->c:Ljava/lang/Object;

    return-void
.end method
