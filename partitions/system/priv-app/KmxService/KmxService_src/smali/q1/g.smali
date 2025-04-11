.class public final synthetic Lq1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ld/s0;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ld/s0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/g;->a:Ld/s0;

    const/4 p1, 0x0

    iput p1, p0, Lq1/g;->b:I

    iput p2, p0, Lq1/g;->c:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lq1/g;->a:Ld/s0;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Ld/s0;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    const-string v2, "next_job_scheduler_id"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->a(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lq1/g;->b:I

    if-gt v3, v1, :cond_0

    iget p0, p0, Lq1/g;->c:I

    if-gt v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    iget-object p0, v0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->d()Lp1/e;

    move-result-object p0

    new-instance v1, Lp1/d;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lp1/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v1}, Lp1/e;->h(Lp1/d;)V

    move v1, v3

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
