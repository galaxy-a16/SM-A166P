.class public final enum Lcom/android/server/HermesBigdataFunction$BigdataError;
.super Ljava/lang/Enum;
.source "HermesBigdataFunction.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum NO_ERROR:Lcom/android/server/HermesBigdataFunction$BigdataError;


# instance fields
.field private final errCode:I

.field private final reason:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/HermesBigdataFunction$BigdataError;
    .locals 11

    .line 46
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->NO_ERROR:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v2, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v3, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v4, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v5, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v6, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v7, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v8, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v9, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    sget-object v10, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    filled-new-array/range {v0 .. v10}, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/4 v1, 0x0

    const-string v2, "No Error"

    const-string v3, "NO_ERROR"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->NO_ERROR:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 48
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x64

    const-string v2, "Bigdata function is not supported"

    const-string v3, "ERR_NOT_SUPPORTED"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 49
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x65

    const-string/jumbo v2, "sending diagmon agent is failed"

    const-string v3, "ERR_SEND_DIAGMON"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 50
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3e8

    const-string v2, "Unkonwn error"

    const-string v3, "ERR_UNKNOWN"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 51
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3e9

    const-string v2, "File is not found"

    const-string v3, "ERR_FILE_NOT_FOUND"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 52
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3ea

    const-string v2, "File creation has failed"

    const-string v3, "ERR_FILE_CREATED_FAILED"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 53
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3eb

    const-string v2, "File permission denied"

    const-string v3, "ERR_PERMISSION_DENIED"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 54
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3ec

    const-string v2, "Zip API is failed"

    const-string v3, "ERR_ZIP_EXCEPTION"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 55
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3ed

    const-string v2, "Some I/O operation is failed"

    const-string v3, "ERR_IO_EXCEPTION"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 56
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3ee

    const-string v2, "Null pointer exception has occured"

    const-string v3, "ERR_NULLPOINTER_EXCEPTION"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 57
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v1, -0x3ef

    const-string v2, "Some interrupt has occured"

    const-string v3, "ERR_INTERRUPTION_EXCEPTION"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 46
    invoke-static {}, Lcom/android/server/HermesBigdataFunction$BigdataError;->$values()[Lcom/android/server/HermesBigdataFunction$BigdataError;

    move-result-object v0

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p4, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/HermesBigdataFunction$BigdataError;
    .locals 1

    .line 46
    const-class v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-object p0
.end method

.method public static values()[Lcom/android/server/HermesBigdataFunction$BigdataError;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-virtual {v0}, [Lcom/android/server/HermesBigdataFunction$BigdataError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-object v0
.end method


# virtual methods
.method public errCode()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    return p0
.end method

.method public reason()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    return-object p0
.end method
