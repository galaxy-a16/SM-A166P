.class public Lcom/android/server/enterprise/firewall/DomainFilter$3$1;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3$1;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3$1;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$minitUserIdMap(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method
