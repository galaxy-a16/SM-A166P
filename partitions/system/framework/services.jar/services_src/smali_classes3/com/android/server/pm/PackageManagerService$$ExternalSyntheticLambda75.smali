.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda75;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$m0_KbpUoj5UiD1uwQQQnNs7nQDo(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
