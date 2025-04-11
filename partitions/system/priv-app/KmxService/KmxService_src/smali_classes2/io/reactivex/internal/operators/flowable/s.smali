.class public final Lio/reactivex/internal/operators/flowable/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Lvc/d;

.field public final c:J


# direct methods
.method public synthetic constructor <init>(Lvc/d;JI)V
    .locals 0

    iput p4, p0, Lio/reactivex/internal/operators/flowable/s;->a:I

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s;->b:Lvc/d;

    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/s;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lio/reactivex/internal/operators/flowable/s;->a:I

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/s;->c:J

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/s;->b:Lvc/d;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0, v1, v2}, Lvc/d;->request(J)V

    return-void

    :goto_0
    invoke-interface {p0, v1, v2}, Lvc/d;->request(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
