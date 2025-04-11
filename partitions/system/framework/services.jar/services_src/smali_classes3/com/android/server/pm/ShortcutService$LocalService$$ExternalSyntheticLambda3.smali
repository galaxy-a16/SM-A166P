.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$LocalService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService$LocalService;->$r8$lambda$i_SqqysX6qAfp1rTjfAymOBYYGU(Lcom/android/server/pm/ShortcutService$LocalService;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
