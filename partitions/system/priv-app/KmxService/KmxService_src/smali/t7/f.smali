.class public final Lt7/f;
.super Lw8/c;
.source "SourceFile"


# instance fields
.field public final b:Lw8/c;

.field public final c:Leb/s;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Ll6/m;Leb/s;I)V
    .locals 0

    invoke-direct {p0}, Lw8/c;-><init>()V

    iput-object p1, p0, Lt7/f;->b:Lw8/c;

    iput-object p2, p0, Lt7/f;->c:Leb/s;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt7/f;->d:Z

    iput p3, p0, Lt7/f;->e:I

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 4

    iget-object v0, p0, Lt7/f;->b:Lw8/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lt7/f;->c:Leb/s;

    if-eqz v1, :cond_0

    const-string v2, "bufferSize"

    iget v3, p0, Lt7/f;->e:I

    invoke-static {v3, v2}, Lfc/c;->m(ILjava/lang/String;)V

    new-instance v2, Lio/reactivex/internal/operators/flowable/l;

    iget-boolean p0, p0, Lt7/f;->d:Z

    invoke-direct {v2, v0, v1, p0, v3}, Lio/reactivex/internal/operators/flowable/l;-><init>(Leb/e;Leb/s;ZI)V

    invoke-virtual {v2, p1}, Leb/e;->subscribe(Lvc/c;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "scheduler is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lw8/d;)V
    .locals 4

    new-instance v0, Lt7/e;

    iget-object v1, p0, Lt7/f;->b:Lw8/c;

    invoke-direct {v0, v1}, Lt7/e;-><init>(Lw8/c;)V

    iget-object v1, p0, Lt7/f;->c:Leb/s;

    if-eqz v1, :cond_0

    const-string v2, "bufferSize"

    iget v3, p0, Lt7/f;->e:I

    invoke-static {v3, v2}, Lfc/c;->m(ILjava/lang/String;)V

    new-instance v2, Lio/reactivex/internal/operators/flowable/l;

    iget-boolean p0, p0, Lt7/f;->d:Z

    invoke-direct {v2, v0, v1, p0, v3}, Lio/reactivex/internal/operators/flowable/l;-><init>(Leb/e;Leb/s;ZI)V

    new-instance p0, Lt7/c;

    invoke-direct {p0, p1}, Lt7/c;-><init>(Lw8/d;)V

    invoke-virtual {v2, p0}, Leb/e;->a(Leb/g;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "scheduler is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
