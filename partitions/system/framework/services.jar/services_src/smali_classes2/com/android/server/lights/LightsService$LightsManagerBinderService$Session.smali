.class public final Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mPriority:I

.field public final mRequests:Landroid/util/SparseArray;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$1:Lcom/android/server/lights/LightsService$LightsManagerBinderService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;I)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->this$1:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 198
    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    .line 199
    iput p3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;)I
    .locals 0

    .line 213
    iget p1, p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    iget p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 192
    check-cast p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->compareTo(Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;)I

    move-result p0

    return p0
.end method

.method public setRequest(ILandroid/hardware/lights/LightState;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 204
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method
