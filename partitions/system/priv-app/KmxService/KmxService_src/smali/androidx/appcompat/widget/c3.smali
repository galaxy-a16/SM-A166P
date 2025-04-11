.class public final Landroidx/appcompat/widget/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/c3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Landroidx/appcompat/widget/c3;->a:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance p0, Lm4/c;

    invoke-direct {p0, p1, v0}, Lm4/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 2
    :pswitch_1
    new-instance p0, Lg4/m;

    invoke-direct {p0, p1, v0}, Lg4/m;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 3
    :pswitch_2
    new-instance p0, Lcom/google/android/material/internal/i;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 4
    :pswitch_3
    new-instance p0, Lcom/google/android/material/internal/b;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 5
    :pswitch_4
    new-instance p0, Lz3/b;

    invoke-direct {p0, p1, v0}, Lz3/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 6
    :pswitch_5
    new-instance p0, Ly3/b;

    invoke-direct {p0, p1, v0}, Ly3/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 7
    :pswitch_6
    new-instance p0, Lh1/o;

    invoke-direct {p0, p1, v0}, Lh1/o;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 8
    :pswitch_7
    new-instance p0, Landroidx/recyclerview/widget/f1;

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/f1;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 9
    :pswitch_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 10
    sget-object p0, Lh0/b;->b:Lh0/a;

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_9
    new-instance p0, Lr/h;

    invoke-direct {p0, p1, v0}, Lr/h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 13
    :pswitch_a
    new-instance p0, Landroidx/appcompat/widget/r4;

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/r4;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 14
    :pswitch_b
    new-instance p0, Landroidx/appcompat/widget/d3;

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/d3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 15
    :goto_0
    new-instance p0, Lo4/y;

    invoke-direct {p0, p1, v0}, Lo4/y;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/c3;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 16
    :pswitch_0
    new-instance p0, Lm4/c;

    invoke-direct {p0, p1, p2}, Lm4/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 17
    :pswitch_1
    new-instance p0, Lg4/m;

    invoke-direct {p0, p1, p2}, Lg4/m;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 18
    :pswitch_2
    new-instance p0, Lcom/google/android/material/internal/i;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 19
    :pswitch_3
    new-instance p0, Lcom/google/android/material/internal/b;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 20
    :pswitch_4
    new-instance p0, Lz3/b;

    invoke-direct {p0, p1, p2}, Lz3/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 21
    :pswitch_5
    new-instance p0, Ly3/b;

    invoke-direct {p0, p1, p2}, Ly3/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 22
    :pswitch_6
    new-instance p0, Lh1/o;

    invoke-direct {p0, p1, p2}, Lh1/o;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 23
    :pswitch_7
    new-instance p0, Landroidx/recyclerview/widget/f1;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/f1;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 24
    :pswitch_8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 25
    sget-object p0, Lh0/b;->b:Lh0/a;

    return-object p0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :pswitch_9
    new-instance p0, Lr/h;

    invoke-direct {p0, p1, p2}, Lr/h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 28
    :pswitch_a
    new-instance p0, Landroidx/appcompat/widget/r4;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/r4;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 29
    :pswitch_b
    new-instance p0, Landroidx/appcompat/widget/d3;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/d3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 30
    :goto_0
    new-instance p0, Lo4/y;

    invoke-direct {p0, p1, p2}, Lo4/y;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/c3;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Lm4/c;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lg4/m;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/material/internal/i;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/material/internal/b;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lz3/b;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Ly3/b;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lh1/o;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Landroidx/recyclerview/widget/f1;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lh0/b;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lr/h;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroidx/appcompat/widget/r4;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Landroidx/appcompat/widget/d3;

    return-object p0

    :goto_0
    new-array p0, p1, [Lo4/y;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
