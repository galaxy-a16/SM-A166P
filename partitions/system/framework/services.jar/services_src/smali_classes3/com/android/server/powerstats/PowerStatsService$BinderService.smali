.class public final Lcom/android/server/powerstats/PowerStatsService$BinderService;
.super Landroid/os/Binder;
.source "PowerStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService$BinderService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsService$BinderService;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmContext(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerStats HAL is not initialized.  No data available."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_1
    array-length v0, p3

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p2, "model"

    const/4 v0, 0x1

    .line 172
    aget-object v1, p3, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 173
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeModelDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "meter"

    .line 174
    aget-object v1, p3, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 175
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeMeterDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p2, "residency"

    .line 176
    aget-object p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 177
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeResidencyDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 179
    :cond_4
    array-length p1, p3

    if-nez p1, :cond_5

    const-string p1, "PowerStatsService dumpsys: available PowerEntities"

    .line 180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p1

    .line 182
    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->dumpsys([Landroid/hardware/power/stats/PowerEntity;Ljava/io/PrintWriter;)V

    const-string p1, "PowerStatsService dumpsys: available Channels"

    .line 184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p1

    .line 186
    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->dumpsys([Landroid/hardware/power/stats/Channel;Ljava/io/PrintWriter;)V

    const-string p1, "PowerStatsService dumpsys: available EnergyConsumers"

    .line 188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p0

    .line 190
    invoke-static {p0, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->dumpsys([Landroid/hardware/power/stats/EnergyConsumer;Ljava/io/PrintWriter;)V

    :cond_5
    :goto_0
    return-void
.end method
