.class public Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# instance fields
.field public final mDate:Ljava/lang/String;

.field public final mDescription:Ljava/lang/String;

.field public final mType:Ljava/lang/String;

.field public final mUId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6884
    iput p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mUId:I

    .line 6885
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mType:Ljava/lang/String;

    .line 6886
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDescription:Ljava/lang/String;

    const-string/jumbo p1, "uuuu/MM/dd HH:mm:ss"

    .line 6888
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 6889
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p2

    .line 6890
    invoke-virtual {p1, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 6894
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mUId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "type"

    .line 6895
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string v0, "description"

    .line 6896
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string v0, "date"

    .line 6897
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 6898
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method
