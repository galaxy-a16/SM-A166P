.class public final Lio/reactivex/internal/functions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lio/reactivex/internal/functions/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Leb/s;
    .locals 0

    iget p0, p0, Lio/reactivex/internal/functions/a;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lnb/c;->a:Lio/reactivex/internal/schedulers/j;

    return-object p0

    :pswitch_1
    sget-object p0, Lnb/b;->a:Lio/reactivex/internal/schedulers/i;

    return-object p0

    :pswitch_2
    sget-object p0, Lnb/a;->a:Lio/reactivex/internal/schedulers/d;

    return-object p0

    :goto_0
    sget-object p0, Lnb/d;->a:Lio/reactivex/internal/schedulers/q;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lio/reactivex/internal/functions/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lio/reactivex/internal/functions/a;->a()Leb/s;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lio/reactivex/internal/functions/a;->a()Leb/s;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lio/reactivex/internal/functions/a;->a()Leb/s;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/functions/a;->a()Leb/s;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
