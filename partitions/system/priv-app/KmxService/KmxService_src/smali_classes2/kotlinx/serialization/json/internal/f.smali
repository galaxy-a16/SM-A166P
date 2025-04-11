.class public final Lkotlinx/serialization/json/internal/f;
.super Lkotlinx/serialization/json/internal/e;
.source "SourceFile"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/k;Z)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/e;-><init>(Lkotlinx/serialization/json/internal/k;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/f;->c:Z

    return-void
.end method


# virtual methods
.method public final c(B)V
    .locals 1

    invoke-static {p1}, Lkotlin/k;->a(B)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/f;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/f;->c:Z

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final f(J)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/f;->c:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final h(S)V
    .locals 1

    invoke-static {p1}, Lkotlin/q;->a(S)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/f;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
