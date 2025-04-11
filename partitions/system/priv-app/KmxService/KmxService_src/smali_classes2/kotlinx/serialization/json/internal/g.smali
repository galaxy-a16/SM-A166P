.class public final Lkotlinx/serialization/json/internal/g;
.super Lkotlinx/serialization/json/internal/e;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/serialization/json/b;

.field public d:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/json/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/e;-><init>(Lkotlinx/serialization/json/internal/k;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/g;->c:Lkotlinx/serialization/json/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/e;->b:Z

    iget v1, p0, Lkotlinx/serialization/json/internal/g;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlinx/serialization/json/internal/g;->d:I

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/e;->b:Z

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/e;->g(Ljava/lang/String;)V

    iget v1, p0, Lkotlinx/serialization/json/internal/g;->d:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/g;->c:Lkotlinx/serialization/json/b;

    iget-object v2, v2, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-object v2, v2, Lkotlinx/serialization/json/i;->g:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/e;->g(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/e;->d(C)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget v0, p0, Lkotlinx/serialization/json/internal/g;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/g;->d:I

    return-void
.end method
