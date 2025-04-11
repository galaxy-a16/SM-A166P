.class public final Lcom/fasterxml/jackson/databind/deser/std/g;
.super Lcom/fasterxml/jackson/databind/deser/impl/l;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/h;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/l;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/g;->c:Ljava/util/LinkedHashMap;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/g;->d:Ljava/lang/Object;

    return-void
.end method
