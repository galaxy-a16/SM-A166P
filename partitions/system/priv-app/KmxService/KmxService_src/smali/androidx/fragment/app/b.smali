.class public final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/b;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Landroidx/fragment/app/a1;

    invoke-direct {p0, p1}, Landroidx/fragment/app/a1;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/fragment/app/v0;

    invoke-direct {p0, p1}, Landroidx/fragment/app/v0;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/fragment/app/d;

    invoke-direct {p0, p1}, Landroidx/fragment/app/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/fragment/app/c;

    invoke-direct {p0, p1}, Landroidx/fragment/app/c;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :goto_0
    new-instance p0, Landroidx/fragment/app/e1;

    invoke-direct {p0, p1}, Landroidx/fragment/app/e1;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/b;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Landroidx/fragment/app/a1;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Landroidx/fragment/app/v0;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Landroidx/fragment/app/d;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Landroidx/fragment/app/c;

    return-object p0

    :goto_0
    new-array p0, p1, [Landroidx/fragment/app/e1;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
