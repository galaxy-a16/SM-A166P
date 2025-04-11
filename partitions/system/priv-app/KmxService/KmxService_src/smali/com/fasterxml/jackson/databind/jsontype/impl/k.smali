.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsontype/h;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/type/TypeFactory;

.field public final b:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/k;->b:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/k;->a:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-void
.end method
