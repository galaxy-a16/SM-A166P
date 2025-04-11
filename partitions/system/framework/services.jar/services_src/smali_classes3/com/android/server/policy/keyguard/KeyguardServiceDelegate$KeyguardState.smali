.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# instance fields
.field public bootAnimFinished:Z

.field public bootCompleted:Z

.field public coverOccluded:Z

.field public currentUser:I

.field public deviceHasKeyguard:Z

.field public dexOccluded:Z

.field public dreaming:Z

.field public enabled:Z

.field public inputRestricted:Z

.field public interactiveState:I

.field public volatile occluded:Z

.field public offReason:I

.field public screenState:I

.field public secure:Z

.field public showing:Z

.field public systemIsReady:Z


# direct methods
.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 95
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 2

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    return-void
.end method
