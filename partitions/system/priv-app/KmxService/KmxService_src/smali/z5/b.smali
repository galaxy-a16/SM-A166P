.class public final Lz5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lf6/d;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz5/b;->a:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-array p1, p2, [Lf6/d;

    :goto_0
    iput-object p1, p0, Lz5/b;->b:[Lf6/d;

    iput-boolean p3, p0, Lz5/b;->c:Z

    iput-boolean p4, p0, Lz5/b;->d:Z

    return-void
.end method
