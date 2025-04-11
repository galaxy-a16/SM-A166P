.class public Lcom/android/server/desktopmode/StandaloneModeChanger$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "StandaloneModeChanger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method public static synthetic $r8$lambda$0UNsrOJ228bHUn2oRmFLnvfHd9g(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$1;->lambda$onUserChanged$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$1;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onUserChanged$0(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$1;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    new-instance p1, Lcom/android/server/desktopmode/StandaloneModeChanger$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$1$$ExternalSyntheticLambda0;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$mstoreDefaultHomePackageName(Lcom/android/server/desktopmode/StandaloneModeChanger;ZLjava/util/function/Consumer;)V

    return-void
.end method
