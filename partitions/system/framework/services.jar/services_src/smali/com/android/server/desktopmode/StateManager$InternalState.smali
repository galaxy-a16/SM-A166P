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

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopModeState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPackageState(Lcom/android/server/desktopmode/StateManager$InternalState;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method


# virtual methods
.method public getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 0

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return p0
.end method

.method public getDesktopDisplayId()I
    .locals 0

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return p0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-object p0
.end method

.method public getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public getPackageState()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-object p0
.end method

.method public getPreviousConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public isCoverSupportStatePartial()Z
    .locals 1

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

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_0

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

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

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

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return p0
.end method

.method public isDockLowChargerConnected()Z
    .locals 1

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

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return p0
.end method

.method public isExternalDisplayConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return p0
.end method

.method public isForcedInternalScreenModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return p0
.end method

.method public isHdmiConnected()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_0

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

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return p0
.end method

.method public isMouseConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return p0
.end method

.method public isNavBarGestureEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return p0
.end method

.method public isPackagesAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

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

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return p0
.end method

.method public isSpenEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return p0
.end method

.method public isTouchpadAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return p0
.end method

.method public isTouchpadEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return p0
.end method

.method public isWiredCharging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return p0
.end method

.method public isWirelessDexConnected()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_0

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

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "State{s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    const-string v3, " prev/"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    if-eqz v1, :cond_2

    const-string v1, " pogoKeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    if-eqz v1, :cond_3

    const-string v1, " mouse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_5

    const-string v1, " cover.t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".ft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_0
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const-string v1, " desktopDisplay."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    if-eqz v1, :cond_b

    const-string v1, " forcedInternalScreenMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    if-ne v1, v4, :cond_c

    const-string v1, " dockLowCharger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    if-eqz v1, :cond_d

    const-string v1, " modeChangeLocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    if-eqz v1, :cond_e

    const-string v1, " wiredCharging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    if-eqz v1, :cond_10

    const-string v1, " touchpadAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    if-eqz v1, :cond_11

    const-string v1, " touchpadEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    if-eqz v1, :cond_12

    const-string v1, " displayResolutionUnsupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    if-eqz v1, :cond_13

    const-string v1, " spenEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    if-eqz p0, :cond_14

    const-string p0, " navBarGestureEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
