.class public Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;
.super Ljava/lang/Object;
.source "AudioPoliciesBluetoothRouteController.java"


# instance fields
.field public mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field public mConnectedProfiles:Landroid/util/SparseBooleanArray;

.field public mRoute:Landroid/media/MediaRoute2Info;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBtDevice(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBtDevice(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedProfiles(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/util/SparseBooleanArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getRouteType()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x17

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1a

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0
.end method
