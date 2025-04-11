.class public final Lcom/fasterxml/jackson/databind/deser/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field public final b:Lcom/fasterxml/jackson/databind/c;

.field public final c:Lcom/fasterxml/jackson/databind/introspect/l0;

.field public final d:Lcom/fasterxml/jackson/databind/deser/impl/b;

.field public final e:Ljava/util/Map;

.field public f:Ljava/util/LinkedList;

.field public g:I

.field public h:Ljava/util/LinkedList;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/l0;Lcom/fasterxml/jackson/databind/deser/impl/b;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/c;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/c;->b:Lcom/fasterxml/jackson/databind/c;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/c;->c:Lcom/fasterxml/jackson/databind/introspect/l0;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/c;->d:Lcom/fasterxml/jackson/databind/deser/impl/b;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/c;->e:Ljava/util/Map;

    return-void
.end method
