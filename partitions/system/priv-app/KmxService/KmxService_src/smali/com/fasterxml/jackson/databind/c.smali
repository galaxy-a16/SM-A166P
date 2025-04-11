.class public abstract Lcom/fasterxml/jackson/databind/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method


# virtual methods
.method public abstract a()[Ljava/lang/Class;
.end method

.method public abstract b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public abstract d()Ljava/util/List;
.end method
