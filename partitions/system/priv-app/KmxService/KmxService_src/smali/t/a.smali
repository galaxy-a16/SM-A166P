.class public final synthetic Lt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lt/a;->a:I

    iput-object p1, p0, Lt/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lt/a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    :pswitch_1
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/KmxServiceApplication;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/KmxServiceApplication;->a(Lcom/samsung/android/kmxservice/KmxServiceApplication;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Ll6/a;

    check-cast p0, Ll6/h;

    iget-object v0, p0, Ll6/a;->e:Ll6/c;

    iget-object v4, v0, Ll6/c;->b:Ll6/b;

    iget-object v4, v4, Ll6/b;->a:Ll6/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Ll6/h;->q:Lv7/d;

    iget-object v5, v5, Lv7/w;->a:Ld/g0;

    :goto_0
    check-cast v5, Lv7/c;

    if-eqz v5, :cond_6

    iget-object v6, v5, Lv7/c;->c:Ljava/lang/Object;

    check-cast v6, Lf6/c;

    invoke-static {v6}, Lf6/e;->h(Lf6/c;)Lf6/e;

    move-result-object v6

    iget-object v7, v4, Ll6/l;->a:Ljava/lang/Object;

    check-cast v7, Ll6/k;

    :goto_1
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lf6/e;->f()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v6}, Ll6/k;->i(Lf6/e;)Ll6/k;

    move-result-object v7

    goto :goto_1

    :cond_0
    iget-object v8, v6, Lu7/a;->a:[B

    array-length v8, v8

    iget v9, v6, Lf6/e;->e:I

    if-eq v9, v8, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    if-eqz v8, :cond_2

    iget-object v7, v7, Ll6/k;->f:Lv7/w;

    goto :goto_3

    :cond_2
    iget-object v7, v7, Ll6/k;->e:Lv7/w;

    :goto_3
    if-eqz v7, :cond_4

    iget-object v7, v7, Lv7/w;->a:Ld/g0;

    :goto_4
    check-cast v7, Ll6/j;

    if-eqz v7, :cond_4

    iget-object v8, v7, Ll6/j;->f:Ll6/h;

    if-ne v8, p0, :cond_3

    iput-object v1, v7, Ll6/j;->f:Ll6/h;

    iput-object v1, v7, Ll6/j;->g:Lv7/c;

    goto :goto_5

    :cond_3
    iget-object v7, v7, Ld/g0;->b:Ljava/lang/Object;

    check-cast v7, Ld/g0;

    goto :goto_4

    :cond_4
    :goto_5
    move-object v7, v1

    goto :goto_1

    :cond_5
    iget-object v5, v5, Ld/g0;->b:Ljava/lang/Object;

    check-cast v5, Ld/g0;

    goto :goto_0

    :cond_6
    iget p0, p0, Ll6/a;->l:I

    if-lez p0, :cond_7

    invoke-virtual {v0}, Ll6/c;->a()V

    :cond_7
    return-void

    :pswitch_3
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/c0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Service took too long to process intent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/messaging/c0;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finishing."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseMessaging"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/firebase/messaging/c0;->b:Lr3/i;

    invoke-virtual {p0, v1}, Lr3/i;->c(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lb3/r;

    iget-object v0, p0, Lb3/r;->e:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb3/r;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lb3/r;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb3/r;->e:Ljava/util/Collection;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lb3/r;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_5
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/installations/a;

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/google/firebase/installations/a;->a(Z)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lo4/k;

    iget-object v0, p0, Lo4/k;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo4/k;->t(Z)V

    iput-boolean v0, p0, Lo4/k;->m:Z

    return-void

    :pswitch_8
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lo4/d;

    invoke-virtual {p0, v2}, Lo4/d;->t(Z)V

    return-void

    :pswitch_9
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lb3/j;

    iput-boolean v3, p0, Lb3/j;->c:Z

    iget-object v0, p0, Lb3/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Li0/d;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lb3/j;->d:I

    invoke-virtual {p0, v0}, Lb3/j;->a(I)V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lb3/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget p0, p0, Lb3/j;->d:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(I)V

    :cond_a
    :goto_7
    return-void

    :pswitch_a
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    return-void

    :pswitch_b
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Ls2/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, La5/a;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, La5/a;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Ls2/k;->d:Lu2/b;

    check-cast p0, Lt2/k;

    invoke-virtual {p0, v0}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    return-void

    :pswitch_c
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/impl/utils/futures/i;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/work/impl/utils/futures/a;

    if-eqz v0, :cond_b

    goto/16 :goto_b

    :cond_b
    invoke-virtual {p0}, Landroidx/work/n;->getInputData()Landroidx/work/f;

    move-result-object v0

    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    iget-object v0, v0, Landroidx/work/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_c
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    const-string v4, "get()"

    invoke-static {v0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    move v2, v3

    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    sget-object v1, Ls1/a;->a:Ljava/lang/String;

    const-string v2, "No worker to delegate to."

    invoke-virtual {v0, v1, v2}, Landroidx/work/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    invoke-virtual {p0}, Landroidx/work/n;->getWorkerFactory()Landroidx/work/c0;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/work/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a:Landroidx/work/WorkerParameters;

    invoke-virtual {v2, v3, v1, v4}, Landroidx/work/c0;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/n;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/n;

    if-nez v2, :cond_10

    sget-object v1, Ls1/a;->a:Ljava/lang/String;

    const-string v2, "No worker to delegate to."

    invoke-virtual {v0, v1, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Landroidx/work/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/impl/d0;->A(Landroid/content/Context;)Landroidx/work/impl/d0;

    move-result-object v2

    iget-object v3, v2, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/work/n;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id.toString()"

    invoke-static {v4, v5}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lp1/s;->h(Ljava/lang/String;)Lp1/q;

    move-result-object v3

    if-nez v3, :cond_11

    :goto_9
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/impl/utils/futures/i;

    const-string v0, "future"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ls1/a;->a:Ljava/lang/String;

    new-instance v0, Landroidx/work/j;

    invoke-direct {v0}, Landroidx/work/j;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_11
    new-instance v4, Ll1/c;

    iget-object v2, v2, Landroidx/work/impl/d0;->y:Lcom/google/firebase/messaging/r;

    const-string v5, "workManagerImpl.trackers"

    invoke-static {v2, v5}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, p0}, Ll1/c;-><init>(Lcom/google/firebase/messaging/r;Ll1/b;)V

    invoke-static {v3}, Ll9/b;->o0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Ll1/c;->b(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroidx/work/n;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id.toString()"

    invoke-static {v2, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ll1/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Ls1/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Constraints met for delegate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/n;

    invoke-static {v2}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/work/n;->startWork()Ls4/a;

    move-result-object v2

    const-string v3, "delegate!!.startWork()"

    invoke-static {v2, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ld/p0;

    const/16 v4, 0xe

    invoke-direct {v3, v4, p0, v2}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/work/n;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ls4/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v2

    sget-object v3, Ls1/a;->a:Ljava/lang/String;

    const-string v4, "Delegated worker "

    const-string v5, " threw exception in startWork."

    invoke-static {v4, v1, v5}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Landroidx/work/o;->a:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_12

    invoke-static {v3, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-boolean v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Z

    if-eqz v2, :cond_13

    const-string v2, "Constraints were unmet, Retrying."

    invoke-virtual {v0, v3, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/impl/utils/futures/i;

    const-string v0, "future"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/k;

    invoke-direct {v0}, Landroidx/work/k;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/impl/utils/futures/i;

    const-string v0, "future"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/j;

    invoke-direct {v0}, Landroidx/work/j;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_a
    monitor-exit v1

    goto :goto_b

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_14
    sget-object v2, Ls1/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Constraints not met for delegate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Requesting retry."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/impl/utils/futures/i;

    const-string v0, "future"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/k;

    invoke-direct {v0}, Landroidx/work/k;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    :goto_b
    return-void

    :pswitch_d
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/n;

    iget-object v0, p0, Landroidx/room/n;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean v3, p0, Landroidx/room/n;->g:Z

    iget-object v1, p0, Landroidx/room/n;->i:Landroidx/room/l;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget-object v4, v1, Landroidx/room/l;->b:[Z

    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([ZZ)V

    iput-boolean v2, v1, Landroidx/room/l;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit v1

    iget-object p0, p0, Landroidx/room/n;->h:La1/i;

    if-eqz p0, :cond_15

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_15
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v1

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_e
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/fragment/app/Fragment;->b(Landroidx/fragment/app/Fragment;)V

    return-void

    :pswitch_f
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const-string v0, "$transitioningViews"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/fragment/app/k1;->a(Ljava/util/ArrayList;I)V

    return-void

    :pswitch_10
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :goto_c
    iget-object p0, p0, Lt/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->a(Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
