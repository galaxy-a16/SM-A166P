.class public Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;
    }
.end annotation


# instance fields
.field private final memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr5/b;
        value = "memberList"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;->memberList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMemberList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;->memberList:Ljava/util/List;

    return-object p0
.end method
