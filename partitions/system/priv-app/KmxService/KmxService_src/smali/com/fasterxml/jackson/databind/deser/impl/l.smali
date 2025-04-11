.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

.field public final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/l;->a:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/l;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/l;->a:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/l;->b:Ljava/lang/Class;

    return-void
.end method
