.class public final Lb3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lb3/j;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb3/j;->c:Z

    iput v0, p0, Lb3/j;->d:I

    return-void
.end method

.method public constructor <init>(Lb3/j;[La3/d;ZI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb3/j;->a:I

    .line 2
    iput-object p1, p0, Lb3/j;->e:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb3/j;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lb3/j;->c:Z

    iput p4, p0, Lb3/j;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lb3/j;->a:I

    .line 4
    iput-object p1, p0, Lb3/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/activity/k;

    const/16 v0, 0x10

    invoke-direct {p1, p0, v0}, Landroidx/activity/k;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lb3/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Lb3/j;->a:I

    .line 5
    invoke-direct {p0, p1}, Lb3/j;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lb3/j;->a:I

    .line 6
    iput-object p1, p0, Lb3/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lt/a;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lt/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lb3/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lb3/j;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms"

    iput-object v0, p0, Lb3/j;->b:Ljava/lang/Object;

    iput-object p1, p0, Lb3/j;->e:Ljava/lang/Object;

    const/16 p1, 0x1081

    iput p1, p0, Lb3/j;->d:I

    iput-boolean p2, p0, Lb3/j;->c:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget v0, p0, Lb3/j;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lb3/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lb3/j;->d:I

    iget-boolean p1, p0, Lb3/j;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lb3/j;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lb3/j;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lb3/j;->c:Z

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lb3/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iput p1, p0, Lb3/j;->d:I

    iget-boolean p1, p0, Lb3/j;->c:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lb3/j;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lb3/j;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lb3/j;->c:Z

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lc3/i;Lr3/i;)V
    .locals 3

    iget-object p0, p0, Lb3/j;->e:Ljava/lang/Object;

    check-cast p0, Lb3/j;

    iget-object p0, p0, Lb3/j;->e:Ljava/lang/Object;

    check-cast p0, Ld/s0;

    iget-object p0, p0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Lc3/n;

    check-cast p1, Le3/d;

    invoke-virtual {p1}, Lc3/e;->o()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Le3/a;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p1, Ll3/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Ll3/b;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    :try_start_0
    iget-object p0, p1, Ll3/a;->d:Landroid/os/IBinder;

    const/4 p1, 0x0

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p2, p1}, Lr3/i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
