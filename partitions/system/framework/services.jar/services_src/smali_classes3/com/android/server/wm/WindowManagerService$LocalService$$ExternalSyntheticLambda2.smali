.class public final synthetic Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;->$r8$lambda$Qw7FCaH5_D7vdxzIAqZ0OCZgneM(Ljava/lang/String;ILcom/android/server/wm/DisplayContent;)V

    return-void
.end method
