.class public final Lio/reactivex/rxjava3/internal/operators/observable/g;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "SourceFile"


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Ljb/q;

.field public final f:Llb/j;

.field public final g:I

.field public final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/j;JJLjava/util/concurrent/TimeUnit;Ljb/q;Llb/j;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/j;)V

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/g;->b:J

    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/g;->c:J

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/g;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/g;->e:Ljb/q;

    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/g;->f:Llb/j;

    iput p9, p0, Lio/reactivex/rxjava3/internal/operators/observable/g;->g:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/g;->h:Z

    return-void
.end method


# virtual methods
.method public final b(Ljb/m;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v3, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->b:J

    iget-wide v5, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->c:J

    cmp-long v2, v3, v5

    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Ljb/l;

    if-nez v2, :cond_0

    iget v2, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->g:I

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_0

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/observable/d;

    new-instance v2, Lio/reactivex/rxjava3/observers/a;

    invoke-direct {v2, v1}, Lio/reactivex/rxjava3/observers/a;-><init>(Ljb/m;)V

    iget-object v5, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->f:Llb/j;

    iget-object v6, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->e:Ljb/q;

    move-object v0, v8

    move-object v1, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/d;-><init>(Lio/reactivex/rxjava3/observers/a;Llb/j;JLjava/util/concurrent/TimeUnit;Ljb/q;)V

    invoke-interface {v7, v8}, Ljb/l;->subscribe(Ljb/m;)V

    return-void

    :cond_0
    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->e:Ljb/q;

    invoke-virtual {v2}, Ljb/q;->b()Ljb/p;

    move-result-object v16

    iget-wide v11, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->b:J

    iget-wide v13, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->c:J

    cmp-long v2, v11, v13

    if-nez v2, :cond_1

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/c;

    new-instance v9, Lio/reactivex/rxjava3/observers/a;

    invoke-direct {v9, v1}, Lio/reactivex/rxjava3/observers/a;-><init>(Ljb/m;)V

    iget-object v10, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->f:Llb/j;

    iget-object v13, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->d:Ljava/util/concurrent/TimeUnit;

    iget v14, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->g:I

    iget-boolean v15, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->h:Z

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lio/reactivex/rxjava3/internal/operators/observable/c;-><init>(Lio/reactivex/rxjava3/observers/a;Llb/j;JLjava/util/concurrent/TimeUnit;IZLjb/p;)V

    invoke-interface {v7, v2}, Ljb/l;->subscribe(Ljb/m;)V

    return-void

    :cond_1
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/f;

    new-instance v9, Lio/reactivex/rxjava3/observers/a;

    invoke-direct {v9, v1}, Lio/reactivex/rxjava3/observers/a;-><init>(Ljb/m;)V

    iget-object v10, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->f:Llb/j;

    iget-object v15, v0, Lio/reactivex/rxjava3/internal/operators/observable/g;->d:Ljava/util/concurrent/TimeUnit;

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lio/reactivex/rxjava3/internal/operators/observable/f;-><init>(Lio/reactivex/rxjava3/observers/a;Llb/j;JJLjava/util/concurrent/TimeUnit;Ljb/p;)V

    invoke-interface {v7, v2}, Ljb/l;->subscribe(Ljb/m;)V

    return-void
.end method
