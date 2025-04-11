.class public final Lcom/google/android/gms/measurement/internal/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/measurement/internal/m0;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/m0;->b:J

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/m0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/m2;JI)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/google/android/gms/measurement/internal/m0;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m0;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/m0;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/measurement/internal/m0;->a:I

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/m0;->b:J

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/m0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;

    invoke-interface {p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/p;->onTimeout(J)V

    return-void

    :pswitch_1
    check-cast p0, Lio/reactivex/internal/operators/observable/o;

    invoke-interface {p0, v1, v2}, Lio/reactivex/internal/operators/observable/o;->onTimeout(J)V

    return-void

    :pswitch_2
    check-cast p0, Lio/reactivex/internal/operators/flowable/v;

    invoke-interface {p0, v1, v2}, Lio/reactivex/internal/operators/flowable/v;->onTimeout(J)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/google/android/gms/measurement/internal/u4;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->m()Lcom/google/android/gms/measurement/internal/n1;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/n1;->n(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    return-void

    :pswitch_4
    check-cast p0, Lcom/google/android/gms/measurement/internal/n1;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/n1;->q(J)V

    return-void

    :goto_0
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/observable/v;

    invoke-interface {p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/v;->onTimeout(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
