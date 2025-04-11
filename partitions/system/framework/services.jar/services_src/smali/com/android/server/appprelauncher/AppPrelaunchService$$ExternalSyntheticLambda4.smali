.class public final synthetic Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

.field public final synthetic f$1:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-static {v0, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->$r8$lambda$du4PHJjhJ2wV4nkQAZ2wt13VQ2U(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return-void
.end method
