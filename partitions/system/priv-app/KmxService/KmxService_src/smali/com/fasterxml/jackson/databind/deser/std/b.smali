.class public final Lcom/fasterxml/jackson/databind/deser/std/b;
.super Lcom/fasterxml/jackson/databind/deser/impl/l;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lva/f;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/l;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/b;->c:Ljava/util/ArrayList;

    return-void
.end method
