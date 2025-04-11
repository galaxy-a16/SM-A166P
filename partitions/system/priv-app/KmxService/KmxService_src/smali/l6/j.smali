.class public final Ll6/j;
.super Ld/g0;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:B

.field public final e:[B

.field public f:Ll6/h;

.field public g:Lv7/c;

.field public h:Z


# direct methods
.method public constructor <init>(Ll7/c;ILl6/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld/g0;-><init>(I)V

    iput p2, p0, Ll6/j;->c:I

    invoke-virtual {p1}, Ll7/c;->a()B

    move-result p2

    iput-byte p2, p0, Ll6/j;->d:B

    iget-object p1, p1, Ll7/c;->c:Lf6/c;

    invoke-virtual {p1}, Lf6/c;->i()[B

    move-result-object p2

    iput-object p2, p0, Ll6/j;->e:[B

    iput-object p3, p0, Ll6/j;->f:Ll6/h;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p3, Ll6/h;->q:Lv7/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lv7/c;

    invoke-direct {p3, p1}, Lv7/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lv7/w;->a(Ld/g0;)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Ll6/j;->g:Lv7/c;

    return-void
.end method
