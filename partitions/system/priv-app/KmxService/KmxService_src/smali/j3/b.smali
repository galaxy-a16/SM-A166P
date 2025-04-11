.class public final Lj3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj3/b;->a:I

    iput v0, p0, Lj3/b;->b:I

    iput v0, p0, Lj3/b;->c:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj3/b;->a:I

    iput p2, p0, Lj3/b;->c:I

    return-void
.end method
