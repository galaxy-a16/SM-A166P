.class public final Ld1/u;
.super Ld1/r;
.source "SourceFile"


# instance fields
.field public final a:Ld1/v;


# direct methods
.method public constructor <init>(Ld1/v;)V
    .locals 0

    invoke-direct {p0}, Ld1/r;-><init>()V

    iput-object p1, p0, Ld1/u;->a:Ld1/v;

    return-void
.end method


# virtual methods
.method public final d(Ld1/q;)V
    .locals 0

    iget-object p0, p0, Ld1/u;->a:Ld1/v;

    iget-boolean p1, p0, Ld1/v;->E:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ld1/q;->F()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld1/v;->E:Z

    :cond_0
    return-void
.end method

.method public final e(Ld1/q;)V
    .locals 2

    iget-object v0, p0, Ld1/u;->a:Ld1/v;

    iget v1, v0, Ld1/v;->C:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ld1/v;->C:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld1/v;->E:Z

    invoke-virtual {v0}, Ld1/q;->m()V

    :cond_0
    invoke-virtual {p1, p0}, Ld1/q;->v(Ld1/p;)V

    return-void
.end method
