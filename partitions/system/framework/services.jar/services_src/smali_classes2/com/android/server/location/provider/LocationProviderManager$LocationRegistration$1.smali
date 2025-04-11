.class public Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mPreviousLocation:Landroid/location/Location;

.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public test(Landroid/location/Location;)Z
    .locals 6

    .line 948
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 951
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 952
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 953
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    const-wide/16 v4, 0x7530

    .line 952
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 955
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 956
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 967
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_1

    return v1

    .line 980
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 943
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->test(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method
