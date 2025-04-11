.class public final Lio/reactivex/rxjava3/internal/functions/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/j;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lio/reactivex/rxjava3/internal/functions/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljb/q;
    .locals 0

    iget p0, p0, Lio/reactivex/rxjava3/internal/functions/b;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lio/reactivex/rxjava3/schedulers/c;->a:Lio/reactivex/rxjava3/internal/schedulers/j;

    return-object p0

    :pswitch_1
    sget-object p0, Lio/reactivex/rxjava3/schedulers/b;->a:Lio/reactivex/rxjava3/internal/schedulers/i;

    return-object p0

    :pswitch_2
    sget-object p0, Lio/reactivex/rxjava3/schedulers/a;->a:Lio/reactivex/rxjava3/internal/schedulers/d;

    return-object p0

    :goto_0
    sget-object p0, Lio/reactivex/rxjava3/schedulers/d;->a:Lio/reactivex/rxjava3/internal/schedulers/p;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lio/reactivex/rxjava3/internal/functions/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/functions/b;->a()Ljb/q;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/functions/b;->a()Ljb/q;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/functions/b;->a()Ljb/q;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/functions/b;->a()Ljb/q;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
