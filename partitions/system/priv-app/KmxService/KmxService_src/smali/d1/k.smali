.class public final Ld1/k;
.super Ld1/r;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ld1/m;


# direct methods
.method public constructor <init>(Ld1/m;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Ld1/k;->g:Ld1/m;

    iput-object p2, p0, Ld1/k;->a:Ljava/lang/Object;

    iput-object p3, p0, Ld1/k;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Ld1/k;->c:Ljava/lang/Object;

    iput-object p1, p0, Ld1/k;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Ld1/k;->e:Ljava/lang/Object;

    iput-object p5, p0, Ld1/k;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ld1/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ld1/q;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Ld1/k;->g:Ld1/m;

    iget-object v1, p0, Ld1/k;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ld1/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Ld1/m;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Ld1/k;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ld1/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Ld1/m;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v1, p0, Ld1/k;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object p0, p0, Ld1/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, p1}, Ld1/m;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public final e(Ld1/q;)V
    .locals 0

    invoke-virtual {p1, p0}, Ld1/q;->v(Ld1/p;)V

    return-void
.end method
