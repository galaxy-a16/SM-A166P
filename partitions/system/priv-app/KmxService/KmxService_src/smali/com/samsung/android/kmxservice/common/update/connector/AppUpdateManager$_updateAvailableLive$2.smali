.class final Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/l0;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroidx/lifecycle/l0;

    invoke-direct {p0}, Landroidx/lifecycle/l0;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;->invoke()Landroidx/lifecycle/l0;

    move-result-object p0

    return-object p0
.end method
