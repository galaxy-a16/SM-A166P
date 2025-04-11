.class Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;
.super Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;
.source "ActivityTaskManagerServiceExt.java"


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 831
    invoke-direct {p0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    return-void
.end method


# virtual methods
.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    .line 836
    invoke-super {p0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    .line 837
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method
