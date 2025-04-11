.class public final Lcom/google/android/gms/measurement/internal/z3;
.super Lcom/google/android/gms/internal/measurement/w;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/q2;


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/q5;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/q5;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z3;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->k(Lcom/google/android/gms/measurement/internal/w5;)V

    goto/16 :goto_3

    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/z3;->h(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/w5;)V

    goto/16 :goto_3

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->p(Lcom/google/android/gms/measurement/internal/w5;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/z3;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/z3;->y(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z3;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    sget-object v3, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/google/android/gms/measurement/internal/z3;->m(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_4

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/measurement/internal/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/c;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-static {p2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {p2}, Lva/n;->f(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/measurement/internal/z3;->z(Ljava/lang/String;Z)V

    new-instance p2, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/c;)V

    new-instance p1, Landroidx/appcompat/widget/k;

    const/16 v0, 0x15

    invoke-direct {p1, v0, p0, p2}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :pswitch_9
    sget-object p1, Lcom/google/android/gms/measurement/internal/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/c;

    sget-object v0, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/z3;->r(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V

    goto/16 :goto_3

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->n(Lcom/google/android/gms/measurement/internal/w5;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/z3;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3

    :pswitch_c
    sget-object p1, Lcom/google/android/gms/measurement/internal/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/z3;->j(Lcom/google/android/gms/measurement/internal/o;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_4

    :pswitch_d
    sget-object p1, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/x3;

    invoke-direct {v4, v0, p0, p1}, Lcom/google/android/gms/measurement/internal/x3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/s3;->q(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/measurement/internal/q3;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/s5;

    if-nez v2, :cond_4

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    new-instance v4, Lcom/google/android/gms/measurement/internal/r5;

    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/r5;-><init>(Lcom/google/android/gms/measurement/internal/s5;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Failed to get user properties. appId"

    invoke-virtual {p2, v0, p1, p0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_4

    :pswitch_e
    sget-object p1, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->g(Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_3

    :pswitch_f
    sget-object p1, Lcom/google/android/gms/measurement/internal/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/z3;->z(Ljava/lang/String;Z)V

    new-instance p2, La0/a;

    const/16 v2, 0xc

    invoke-direct {p2, p0, p1, v0, v2}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    goto :goto_3

    :pswitch_10
    sget-object p1, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->x(Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_3

    :pswitch_11
    sget-object p1, Lcom/google/android/gms/measurement/internal/r5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/r5;

    sget-object v0, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/z3;->f(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_3

    :pswitch_12
    sget-object p1, Lcom/google/android/gms/measurement/internal/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/o;

    sget-object v0, Lcom/google/android/gms/measurement/internal/w5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/z3;->u(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4
    move v0, v1

    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/z3;->z(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object p0

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/w5;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/u5;->K(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    new-instance v8, Lcom/google/android/gms/measurement/internal/y3;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    new-instance v0, La0/a;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, p2, v1}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/v3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Lcom/google/android/gms/measurement/internal/w5;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    new-instance p2, La0/a;

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/z3;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v1

    new-instance v8, Lcom/google/android/gms/measurement/internal/u3;

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/u3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/s3;->q(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/measurement/internal/q3;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/s5;

    if-nez p4, :cond_1

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/r5;

    invoke-direct {v1, p3}, Lcom/google/android/gms/measurement/internal/r5;-><init>(Lcom/google/android/gms/measurement/internal/s5;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Failed to get user properties as. appId"

    invoke-virtual {p2, p3, p1, p0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lcom/google/android/gms/measurement/internal/o;Ljava/lang/String;)[B
    .locals 12

    invoke-static {p2}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/z3;->z(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Log and bundle. event"

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v2

    check-cast v2, Lc3/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/measurement/internal/w3;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/w3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Lcom/google/android/gms/measurement/internal/o;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    new-instance p0, Lcom/google/android/gms/measurement/internal/q3;

    invoke-direct {p0, v2, v4, v0}, Lcom/google/android/gms/measurement/internal/q3;-><init>(Lcom/google/android/gms/measurement/internal/s3;Ljava/util/concurrent/Callable;Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/s3;->c:Lcom/google/android/gms/measurement/internal/r3;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0}, Lcom/google/android/gms/measurement/internal/s3;->v(Lcom/google/android/gms/measurement/internal/q3;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p1, "Log and bundle returned null. appId"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p1

    check-cast p1, Lc3/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Log and bundle processed. event, size, time_ms"

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    div-long/2addr v10, v8

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v0, v2, v4, v6}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p2

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Failed to log and bundle. appId, event, error"

    invoke-virtual {p1, v1, p2, v0, p0}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->y:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/v3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Lcom/google/android/gms/measurement/internal/w5;I)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s3;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->run()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/s3;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;
    .locals 9

    invoke-virtual {p0, p4}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {p4}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/measurement/internal/u3;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/u3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/s3;->q(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/measurement/internal/q3;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/s5;

    if-nez p3, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/r5;

    invoke-direct {v0, p2}, Lcom/google/android/gms/measurement/internal/r5;-><init>(Lcom/google/android/gms/measurement/internal/s5;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Failed to query user properties. appId"

    invoke-virtual {p1, p3, p2, p0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/google/android/gms/measurement/internal/w5;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/x3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/google/android/gms/measurement/internal/x3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->q(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/measurement/internal/q3;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Failed to get app instance id. appId"

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/z3;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v1

    new-instance v8, Lcom/google/android/gms/measurement/internal/u3;

    const/4 v7, 0x3

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/u3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/s3;->q(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/measurement/internal/q3;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    const-string p2, "Failed to get conditional user properties as"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/z3;->z(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/v3;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Lcom/google/android/gms/measurement/internal/w5;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/c;)V

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    new-instance p1, La0/a;

    const/16 v1, 0xa

    invoke-direct {p1, p0, v0, p2, v1}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    new-instance v0, La0/a;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, p2, v1}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/v3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Lcom/google/android/gms/measurement/internal/w5;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/z3;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;
    .locals 8

    invoke-virtual {p0, p3}, Lcom/google/android/gms/measurement/internal/z3;->d(Lcom/google/android/gms/measurement/internal/w5;)V

    iget-object v2, p3, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/measurement/internal/u3;

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/u3;-><init>(Lcom/google/android/gms/measurement/internal/z3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/s3;->q(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/measurement/internal/q3;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p1

    const-string p2, "Failed to get conditional user properties"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final z(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z3;->d:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z3;->e:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p2, v3}, Lv9/a;->y(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {p2}, La3/i;->a(Landroid/content/Context;)La3/i;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p2, v3}, La3/i;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z3;->d:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z3;->d:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z3;->e:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    sget-object v4, La3/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v3, p2, p1}, Lv9/a;->e0(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z3;->e:Ljava/lang/String;

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/z3;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string v0, "Unknown calling package name \'%s\'."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Measurement Service called with invalid calling package. appId"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p1, "Measurement Service called without app package"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
