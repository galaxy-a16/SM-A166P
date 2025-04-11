.class public Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;
.super Landroidx/fragment/app/s;
.source "SourceFile"


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORCE_DELETE_FAILURE_COUNT:I = 0x14

.field private static final INIT_VALUE:I = -0x1

.field private static final MAX_DEVICE_COUNT:I = 0x3

.field private static final RESPONSE_OK:I = 0x0

.field private static final RESPONSE_RETRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KMX|VerifyPppDialogFragment"


# instance fields
.field private application:Landroid/app/Application;

.field private incorrectMessageShown:Z

.field private mBackOffTime:J

.field private mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mDetailTextView:Landroid/widget/TextView;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceList:Landroid/widget/Spinner;

.field private mDeviceListAdapter:Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

.field private mDeviceListResult:Landroid/os/Bundle;

.field private mDialogLayout:Landroid/view/View;

.field private mFailureCount:I

.field private mIsShowingIncorrectMessage:Z

.field private mModelCode:Ljava/lang/String;

.field private mPasswordView:Landroid/view/View;

.field private mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

.field private final mPatternLockViewListener:Lu1/a;

.field private mPinOrPasswordEditTextView:Landroid/widget/EditText;

.field private mPinView:Landroid/view/View;

.field private final mPppViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressLayout:Landroid/widget/LinearLayout;

.field private mResultReceiver:Landroid/os/ResultReceiver;

.field private mSavedPinPassword:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mVerifierType:I

.field private mVerifyCurrentPpp:Z

.field private mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La0/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La0/b;-><init>(I)V

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/s;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPppViewMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->incorrectMessageShown:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSelectedPosition:I

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mFailureCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBackOffTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSavedPinPassword:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockViewListener:Lu1/a;

    return-void
.end method

.method public static bridge synthetic A(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListResult:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mFailureCount:I

    return p0
.end method

.method public static bridge synthetic C(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/andrognito/patternlockview/PatternLockView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/os/ResultReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    return p0
.end method

.method public static bridge synthetic G(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    return p0
.end method

.method public static bridge synthetic H(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->incorrectMessageShown:Z

    return-void
.end method

.method public static bridge synthetic I(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBackOffTime:J

    return-void
.end method

.method public static bridge synthetic J(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic K(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mFailureCount:I

    return-void
.end method

.method public static bridge synthetic L(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mModelCode:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic M(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSelectedPosition:I

    return-void
.end method

.method public static bridge synthetic N(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    return-void
.end method

.method public static bridge synthetic O(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;IIII)Ljava/lang/StringBuilder;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->getTimerText(IIII)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic P(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic Q(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initLockOut(IJ)V

    return-void
.end method

.method public static bridge synthetic R(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initPppViewByVerifierType(I)V

    return-void
.end method

.method public static bridge synthetic S(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setVisibilityByVerifierType(I)V

    return-void
.end method

.method public static bridge synthetic T(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->verifyCurrentPpp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic U(Lcom/andrognito/patternlockview/PatternLockView;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->patternToString(Lcom/andrognito/patternlockview/PatternLockView;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calculateDeviceCount()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListAdapter:Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->getDeviceDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->isTablet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private createCredential(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8

    const-string v0, "com.android.internal.widget.LockscreenCredential"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    const-string v4, "KMX|VerifyPppDialogFragment"

    const/4 v5, 0x0

    if-eq p2, v3, :cond_1

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createCredential : wrong credential type : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    new-array p0, v3, [Ljava/lang/Class;

    aput-object v1, p0, v2

    const-string p2, "createPasswordOrNone"

    invoke-static {v0, p2, p0}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {p0, p2}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string p2, "com.android.internal.widget.LockPatternUtils"

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Class;

    const-class v6, [B

    aput-object v6, v1, v2

    const-string v6, "byteArrayToPattern"

    invoke-static {p2, v6, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-static {p2, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "[createCredential] con is NULL"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p2, v4}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getObject(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p0, v1, p2}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-array p1, v3, [Ljava/lang/Class;

    const-class p2, Ljava/util/List;

    aput-object p2, p1, v2

    const-string p2, "createPattern"

    invoke-static {v0, p2, p1}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v2

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Class;

    aput-object v1, p0, v2

    const-string p2, "createPinOrNone"

    invoke-static {v0, p2, p0}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {p0, p2}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    return-object v5
.end method

.method private failedVerifyCredential(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/ui/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/e;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCurrentVerifierType()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getLockTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PIN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Pattern"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private getDescriptionRes()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mModelCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->isTablet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120151

    return p0

    :cond_0
    const p0, 0x7f120150

    return p0

    :cond_1
    const p0, 0x7f120160

    return p0
.end method

.method private getNotifyDeleteDialogTitle()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->calculateDeviceCount()Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez v0, :cond_0

    if-lez p0, :cond_0

    const p0, 0x7f1200d9

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const p0, 0x7f1200da

    return p0

    :cond_1
    if-le v0, v1, :cond_2

    const p0, 0x7f1200db

    return p0

    :cond_2
    if-ne p0, v1, :cond_3

    const p0, 0x7f1200dc

    return p0

    :cond_3
    const p0, 0x7f1200dd

    return p0
.end method

.method private getTimerText(IIII)Ljava/lang/StringBuilder;
    .locals 7

    const/4 v0, 0x1

    add-int/2addr p2, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/high16 v6, 0x7f100000

    invoke-virtual {v4, v6, p4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p4, 0x3c

    if-lez p1, :cond_4

    if-ne p2, p4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    add-int/2addr p1, v0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const p3, 0x7f100004

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    const p3, 0x7f100003

    invoke-virtual {p0, p3, p2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    if-le p1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const p3, 0x7f100005

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const p1, 0x7f12013e

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-le p2, v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    const p3, 0x7f100006

    invoke-virtual {p0, p3, p2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    move p3, p4

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const p2, 0x7f100007

    invoke-virtual {p0, p2, p3, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method private getTitleRes()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mModelCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->isTablet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120159

    return p0

    :cond_0
    const p0, 0x7f120158

    return p0

    :cond_1
    const p0, 0x7f120160

    return p0
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$verifyCurrentPpp$4(Ljava/lang/String;)V

    return-void
.end method

.method private initBottomMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lg4/n;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Lg4/n;->a(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, La5/a;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lg4/n;->setOnItemSelectedListener(Lg4/l;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lg4/n;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f09013f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private initDeviceList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceList:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListAdapter:Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListAdapter:Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->setDeviceList(Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSelectedPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceList:Landroid/widget/Spinner;

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$1;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private initLayout()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDialogLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v1, 0x7f09025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->isShowingIncorrectMessage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mIsShowingIncorrectMessage:Z

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinView:Landroid/view/View;

    const v1, 0x7f090193

    const v2, 0x7f09019c

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSavedPinPassword:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPasswordView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v3, 0x7f09019d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v3, 0x7f090195

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPasswordView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v3, 0x7f090198

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrognito/patternlockview/PatternLockView;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v3, 0x7f09006c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPppViewMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinView:Landroid/view/View;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPppViewMap:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPppViewMap:Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPasswordView:Landroid/view/View;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showProgressBar(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->getCurrentVerifierType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initPppViewByVerifierType(I)V

    const-string v0, "ril.product_code"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mModelCode:Ljava/lang/String;

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-static {v0, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    if-eqz v6, :cond_5

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getObject(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const-string v8, "getLockoutAttemptDeadline"

    invoke-static {v0, v8, v7}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v0, v4}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-direct {p0, v3, v6, v7}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initLockOut(IJ)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    const v6, 0x7f0900a1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v6, Lcom/samsung/android/kmxservice/escrowvault/ui/d;

    invoke-direct {v6, p0, v4}, Lcom/samsung/android/kmxservice/escrowvault/ui/d;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListResult:Landroid/os/Bundle;

    const-string v4, "device_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getVerifierType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mModelCode:Ljava/lang/String;

    :cond_4
    invoke-direct {p0, v4}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initDeviceList(Ljava/util/ArrayList;)V

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initBottomMenu()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initTitleView()V

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_4
    check-cast v0, Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSavedPinPassword:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_5

    :cond_6
    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPasswordView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method private initLockOut(IJ)V
    .locals 2

    long-to-double p2, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-long p2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initLockOut = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|VerifyPppDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p2, p3, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->handleAttemptLockout(JI)V

    :cond_0
    return-void
.end method

.method private initPatternLockView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockViewListener:Lu1/a;

    iget-object v0, v0, Lcom/andrognito/patternlockview/PatternLockView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockViewListener:Lu1/a;

    iget-object v0, v0, Lcom/andrognito/patternlockview/PatternLockView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initPinOrPasswordView(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    if-nez v0, :cond_0

    const v0, 0x7f09019c

    goto :goto_0

    :cond_0
    const v0, 0x7f090193

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$3;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initPppViewByVerifierType(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPppViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const v6, 0x7f0602f8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-ne p1, v3, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move v2, v4

    goto :goto_2

    :cond_2
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x3

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-nez v1, :cond_4

    if-eq p1, v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setDetailTextViewGravity(I)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mIsShowingIncorrectMessage:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setIncorrectMessage()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initDetailMessage()V

    :goto_4
    if-ne p1, v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initPatternLockView()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    invoke-virtual {v0}, Lcom/andrognito/patternlockview/PatternLockView;->j()V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPppViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initPinOrPasswordView(Landroid/view/View;)V

    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mModelCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mModelCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->isTablet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_6

    :cond_8
    move v0, v4

    :goto_6
    if-nez p1, :cond_a

    if-eqz v0, :cond_9

    const p1, 0x7f12015f

    goto :goto_7

    :cond_9
    const p1, 0x7f12015e

    :goto_7
    move v4, p1

    goto :goto_8

    :cond_a
    if-ne p1, v3, :cond_c

    if-eqz v0, :cond_b

    const p1, 0x7f12015d

    goto :goto_7

    :cond_b
    const p1, 0x7f12015c

    goto :goto_7

    :cond_c
    if-ne p1, v2, :cond_e

    if-eqz v0, :cond_d

    const p1, 0x7f12015b

    goto :goto_7

    :cond_d
    const p1, 0x7f12015a

    goto :goto_7

    :cond_e
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    iget p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSelectedPosition:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showInputMethod(Landroid/widget/EditText;)V

    :cond_f
    return-void
.end method

.method private initTitleView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->getDescriptionRes()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private isTablet(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SM-T"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SM-P"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SM-X"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$showInputMethod$7(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$failedVerifyCredential$5(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$failedVerifyCredential$5(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KMX|VerifyPppDialogFragment"

    const-string v1, "SALogging for Register failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/kmxservice/common/analytics/SALog;

    const-string v1, "EV0001"

    invoke-direct {p1, v1, v1, v0}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->application:Landroid/app/Application;

    invoke-static {p1, v0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showProgressBar(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setIncorrectMessage()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    const-string p1, "#FFDB332A"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/andrognito/patternlockview/PatternLockView;->setCorrectStateColor(I)V

    return-void
.end method

.method private synthetic lambda$initBottomMenu$3(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/DoubleClickBlocker;->setBlocking(I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->hideInputMethod(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showProgressBar(Z)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->verifyPinOrPassword()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x7f09013e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$initLayout$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showDataInfoDialog()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showInputMethod(Landroid/widget/EditText;)V

    return-void
.end method

.method private synthetic lambda$showDeleteDialog$8(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v0, 0x4d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$showDeleteDialog$9(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method private static synthetic lambda$showInputMethod$7(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$showNotifyDeleteDialog$10(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 p2, 0x4d2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$static$2(Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getLatestUpdatedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getLatestUpdatedTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$verifyCredential$6(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->handleAttemptLockout(JI)V

    return-void
.end method

.method private synthetic lambda$verifyCurrentPpp$4(Ljava/lang/String;)V
    .locals 5

    const-string v0, "EV0001"

    const-string v1, "KMX|VerifyPppDialogFragment"

    const-string v2, "verify credential result : "

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->verifyCredential(Ljava/lang/String;I)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    const-string v4, "#0000FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/andrognito/patternlockview/PatternLockView;->setCorrectStateColor(I)V

    const-string v3, "SALogging for Register PPP Success"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "status"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/kmxservice/common/analytics/SALog;

    invoke-direct {v2, v0, v0, v3}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->application:Landroid/app/Application;

    invoke-static {v2, v0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ppp"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "verifier_type"

    iget v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->failedVerifyCredential(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "verify current ppp failed : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->failedVerifyCredential(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$showNotifyDeleteDialog$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$initLayout$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$initBottomMenu$3(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$showDeleteDialog$8(Landroid/view/View;)V

    return-void
.end method

.method private static patternToString(Lcom/andrognito/patternlockview/PatternLockView;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/andrognito/patternlockview/PatternLockView;",
            "Ljava/util/List<",
            "Lt1/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/c;

    iget v4, v3, Lt1/c;->a:I

    invoke-virtual {p0}, Lcom/andrognito/patternlockview/PatternLockView;->getDotCount()I

    move-result v5

    mul-int/2addr v5, v4

    iget v3, v3, Lt1/c;->b:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$showDeleteDialog$9(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$static$2(Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;)I

    move-result p0

    return p0
.end method

.method private resetTimer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->lambda$verifyCredential$6(J)V

    return-void
.end method

.method private setDetailTextViewGravity(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x51

    goto :goto_0

    :cond_1
    const p1, 0x800033

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    return-void
.end method

.method private setViewByOrientation(ILandroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0c00b9

    goto :goto_0

    :cond_1
    const p1, 0x7f0c00bb

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz p1, :cond_3

    const p1, 0x7f0c00b8

    goto :goto_0

    :cond_3
    const p1, 0x7f0c00ba

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    return-void
.end method

.method private setVisibilityByVerifierType(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPppViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, -0x2

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setDetailTextViewGravity(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    invoke-virtual {p0}, Lcom/andrognito/patternlockview/PatternLockView;->j()V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->incorrectMessageShown:Z

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private showDataInfoDialog()V
    .locals 3

    const-string v0, "KMX|VerifyPppDialogFragment"

    const-string v1, "showDataInfoDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0c0061

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f1200e3

    invoke-virtual {v0, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showInputMethod(Landroid/widget/EditText;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->incorrectMessageShown:Z

    return p0
.end method

.method public static bridge synthetic u(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBackOffTime:J

    return-wide v0
.end method

.method public static bridge synthetic v(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object p0
.end method

.method private verifyCurrentPpp(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/ui/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/e;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private verifyPinOrPassword()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinView:Landroid/view/View;

    const v1, 0x7f09019c

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPasswordView:Landroid/view/View;

    const v1, 0x7f090193

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->verifyCurrentPpp(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ppp"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_ID"

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "verifier_type"

    iget v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic w(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceList:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListAdapter:Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

    return-object p0
.end method


# virtual methods
.method public getBackOffTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBackOffTime:J

    return-wide v0
.end method

.method public getFailureCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mFailureCount:I

    return p0
.end method

.method public getPinPassword()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinView:Landroid/view/View;

    const v0, 0x7f09019c

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPasswordView:Landroid/view/View;

    const v0, 0x7f090193

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleAttemptLockout(JI)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAttemptLockout = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|VerifyPppDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setVisibilityByVerifierType(I)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->resetTimer()V

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;JJI)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public initDetailMessage()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const v1, 0x7f120152

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const v1, 0x7f120153

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const v1, 0x7f120154

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0502cf

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public isShowingIncorrectMessage()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "KMX|VerifyPppDialogFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setViewByOrientation(ILandroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroidx/fragment/app/s;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/s;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setViewByOrientation(ILandroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initLayout()V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "KMX|VerifyPppDialogFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/s;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "device_list_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListResult:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "resultReceiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mResultReceiver:Landroid/os/ResultReceiver;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListResult:Landroid/os/Bundle;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const-string v0, "KMX|VerifyPppDialogFragment"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setViewByOrientation(ILandroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initLayout()V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/h;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/h;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onCreateView = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KMX|VerifyPppDialogFragment"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifyCurrentPpp:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setViewByOrientation(ILandroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initLayout()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/s;->onDestroyView()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroyView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KMX|VerifyPppDialogFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/s;->onDetach()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->resetTimer()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/s;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/s;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/s;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public setDevicePkiInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDeviceListAdapter:Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->setDevicePkiInfo(Ljava/util/Map;)V

    return-void
.end method

.method public setFailureInfo(IJ)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mFailureCount:I

    iput-wide p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBackOffTime:J

    return-void
.end method

.method public setIncorrectMessage()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const v3, 0x7f120060

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const v1, 0x7f120061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPatternLockView:Lcom/andrognito/patternlockview/PatternLockView;

    invoke-virtual {v0}, Lcom/andrognito/patternlockview/PatternLockView;->j()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const v3, 0x7f120062

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mPinOrPasswordEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDetailTextView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->incorrectMessageShown:Z

    return-void
.end method

.method public setIsShowingIncorrectMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mIsShowingIncorrectMessage:Z

    return-void
.end method

.method public setSavedPinPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mSavedPinPassword:Ljava/lang/String;

    return-void
.end method

.method public showDeleteDialog()V
    .locals 5

    const-string v0, "KMX|VerifyPppDialogFragment"

    const-string v1, "showDeleteDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0063

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f09020a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/ui/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/kmxservice/escrowvault/ui/d;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f090072

    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v1, Lc4/u;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lc4/u;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showNotifyDeleteDialog()V
    .locals 8

    const-string v0, "KMX|VerifyPppDialogFragment"

    const-string v1, "showNotifyDeleteDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const v6, 0x7f100002

    invoke-virtual {v3, v6, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/ui/f;

    invoke-direct {v1, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/f;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V

    const p0, 0x7f1200e3

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showProgressBar(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDialogLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mDialogLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public verifyCredential(Ljava/lang/String;I)Z
    .locals 11

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "KMX|VerifyPppDialogFragment"

    if-nez v2, :cond_0

    const-string p0, "[verifyCredential] con is NULL"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getObject(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->mVerifierType:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->createCredential(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v4

    :cond_1
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v9, "verifyCredential"

    invoke-static {v0, v9, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v8

    invoke-static {v2, v6, v5}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getResponseCode"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-static {v5, v6, v9}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1, v5, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "getTimeout"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-static {v6, v9, v10}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {p1, v6, v9}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v7, v6, v4

    aput-object v7, v6, v1

    const-string v7, "setLockoutAttemptDeadline"

    invoke-static {v0, v7, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {v2, v0, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr p1, v6

    long-to-double p1, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/g0;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/ui/c;

    invoke-direct {v2, v1, p1, p2, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/c;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "verifyCredential : return "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    return v1
.end method
