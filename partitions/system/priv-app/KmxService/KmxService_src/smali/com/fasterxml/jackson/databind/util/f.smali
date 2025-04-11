.class public final Lcom/fasterxml/jackson/databind/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/reflect/Constructor;

.field public transient b:[Ljava/lang/annotation/Annotation;

.field public transient c:[[Ljava/lang/annotation/Annotation;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/f;->d:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method
