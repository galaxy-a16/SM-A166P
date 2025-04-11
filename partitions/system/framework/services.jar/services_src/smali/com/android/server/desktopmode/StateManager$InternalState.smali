.class public Lcom/android/server/desktopmode/StateManager$InternalState;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/State;


# instance fields
.field public mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public mCoverSupportState:I

.field public mCurrentUserId:I

.field public mDesktopDisplayId:I

.field public mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

.field public mDisplayResolutionUnsupported:Z

.field public mDockLowChargerState:I

.field public mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field public mEmergencyModeEnabled:Z

.field public mForcedInternalScreenModeEnabled:Z

.field public mIsExternalDisplayConnected:Z

.field public mIsMouseConnected:Z

.field public mIsNavBarGestureEnabled:Z

.field public mIsPogoKeyboardConnected:Z

.field public mIsWiredCharging:Z

.field public mModeChangeLocked:Z

.field public mPackageState:Ljava/util/Map;

.field public mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field public mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field public mSeq:I

.field public mSpenEnabled:Z

.field public mTouchpadAvailable:Z

.field public mTouchpadEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopModeState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPackageState(Lcom/android/server/desktopmode/StateManager$InternalState;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 519
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 521
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 522
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 523
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 524
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 525
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 526
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 527
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 528
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 529
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 530
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 531
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 532
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    const/4 v0, -0x1

    .line 534
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v1, 0x1

    .line 535
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    .line 536
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 537
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 541
    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 542
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 543
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 544
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 545
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 519
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 521
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 522
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 523
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 524
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 525
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 526
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 527
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 528
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 529
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 530
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 531
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 532
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    const/4 v0, -0x1

    .line 534
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v1, 0x1

    .line 535
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    .line 536
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 537
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 541
    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 542
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 543
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 544
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 545
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 551
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 552
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 553
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 554
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 555
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 556
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 557
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 558
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 559
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 560
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 561
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 562
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 563
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 564
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 566
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 567
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 568
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 570
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 571
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 572
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 573
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 574
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 575
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 576
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method


# virtual methods
.method public getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 704
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return p0
.end method

.method public getDesktopDisplayId()I
    .locals 0

    .line 694
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return p0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-object p0
.end method

.method public getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public getPackageState()Ljava/util/Map;
    .locals 0

    .line 734
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-object p0
.end method

.method public getPreviousConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
    .locals 0

    .line 714
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public isCoverSupportStatePartial()Z
    .locals 1

    .line 611
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDexOnPcConnected()Z
    .locals 1

    .line 659
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDexOnPcOrWirelessDexConnected()Z
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 673
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDexStationConnectedWithFlipCover()Z
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isCoverSupportStatePartial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayResolutionUnsupported()Z
    .locals 0

    .line 684
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return p0
.end method

.method public isDockLowChargerConnected()Z
    .locals 1

    .line 606
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyModeEnabled()Z
    .locals 0

    .line 616
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return p0
.end method

.method public isExternalDisplayConnected()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return p0
.end method

.method public isForcedInternalScreenModeEnabled()Z
    .locals 0

    .line 581
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return p0
.end method

.method public isHdmiConnected()Z
    .locals 1

    .line 678
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModeChangeLocked()Z
    .locals 0

    .line 634
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return p0
.end method

.method public isMouseConnected()Z
    .locals 0

    .line 591
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return p0
.end method

.method public isNavBarGestureEnabled()Z
    .locals 0

    .line 689
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return p0
.end method

.method public isPackagesAvailable()Z
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 624
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isPogoKeyboardConnected()Z
    .locals 0

    .line 596
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return p0
.end method

.method public isSpenEnabled()Z
    .locals 0

    .line 649
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return p0
.end method

.method public isTouchpadAvailable()Z
    .locals 0

    .line 639
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return p0
.end method

.method public isTouchpadEnabled()Z
    .locals 0

    .line 644
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return p0
.end method

.method public isWiredCharging()Z
    .locals 0

    .line 601
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return p0
.end method

.method public isWirelessDexConnected()Z
    .locals 1

    .line 665
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "State{s"

    .line 745
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user"

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 748
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    const-string v3, " prev/"

    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 752
    invoke-virtual {v1}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    if-eqz v1, :cond_2

    const-string v1, " pogoKeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    if-eqz v1, :cond_3

    const-string v1, " mouse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_5

    const-string v1, " cover.t"

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".ft"

    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "open"

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "close"

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_5
    :goto_0
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    .line 767
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 768
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_6
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-nez v1, :cond_7

    .line 773
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 775
    :cond_7
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_8

    .line 776
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 777
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_8
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_9

    .line 780
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 781
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    .line 780
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_9
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const-string v1, " desktopDisplay."

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 786
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    if-eqz v1, :cond_b

    const-string v1, " forcedInternalScreenMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_b
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    if-ne v1, v4, :cond_c

    const-string v1, " dockLowCharger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    if-eqz v1, :cond_d

    const-string v1, " modeChangeLocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    if-eqz v1, :cond_e

    const-string v1, " wiredCharging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    if-eqz v1, :cond_10

    const-string v1, " touchpadAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    if-eqz v1, :cond_11

    const-string v1, " touchpadEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    if-eqz v1, :cond_12

    const-string v1, " displayResolutionUnsupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    if-eqz v1, :cond_13

    const-string v1, " spenEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_13
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    if-eqz p0, :cond_14

    const-string p0, " navBarGestureEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const/16 p0, 0x7d

    .line 796
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
