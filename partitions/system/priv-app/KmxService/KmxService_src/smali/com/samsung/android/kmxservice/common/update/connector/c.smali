.class public final synthetic Lcom/samsung/android/kmxservice/common/update/connector/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/c;->a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/c;->a:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->a(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Ljava/util/ArrayList;)V

    return-void
.end method
