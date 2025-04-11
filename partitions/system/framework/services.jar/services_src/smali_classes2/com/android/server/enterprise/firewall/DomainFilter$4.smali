.class public Lcom/android/server/enterprise/firewall/DomainFilter$4;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$minitDaemonCache(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmServer(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$msendToCache(Lcom/android/server/enterprise/firewall/DomainFilter;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mgetCaptivePortalUid(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$msendToCache(Lcom/android/server/enterprise/firewall/DomainFilter;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
