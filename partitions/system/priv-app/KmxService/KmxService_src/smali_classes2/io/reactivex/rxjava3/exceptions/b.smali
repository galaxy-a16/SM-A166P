.class public final Lio/reactivex/rxjava3/exceptions/b;
.super Lio/reactivex/rxjava3/exceptions/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lio/reactivex/rxjava3/exceptions/b;->a:I

    invoke-direct {p0}, Lio/reactivex/rxjava3/exceptions/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/exceptions/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/b;
    .locals 2

    iget v0, p0, Lio/reactivex/rxjava3/exceptions/b;->a:I

    iget-object v1, p0, Lio/reactivex/rxjava3/exceptions/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-object p0

    :goto_0
    check-cast v1, Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
